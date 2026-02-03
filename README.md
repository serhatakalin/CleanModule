## What is it for?

CleanModule is an **Xcode file template** for iOS that generates a Clean Architecture (VIP) module: ViewController, Interactor, Presenter, Router, Worker, and Models. It follows the [Clean Swift](https://clean-swift.com/) (VIP) approach, inspired by Uncle Bob's Clean Architecture.

<img src="/assets/clean-swift.png" width="300" alt="Preview">

## How to install

### Using the script

1. Clone or download this repo and open a terminal in the repo directory.
2. Run:

```bash
sudo swift install.swift
```

`sudo` is required because the script copies the template into Xcode’s system template directory (`Developer/Library/Xcode/Templates/...`). If the template is already installed, it will be replaced.

## Usage

1. In Xcode: **File → New → File…** (or ⌘N).
2. Under **iOS**, choose **Clean Architecture Module Template** (or **CleanModule**).
3. Enter the **module name** (e.g. `Login`, `Profile`).
4. Optionally check **Create With Storyboard** to include a storyboard file.
5. Click **Next** and save into your target group.

The template generates: `*ViewController`, `*Interactor`, `*Presenter`, `*Router`, `*Worker`, `*Models`, and optionally a storyboard.

## Project hierarchy

Each module follows the VIP cycle: ViewController → Interactor → Presenter → ViewController; Worker and Router are used for side effects and navigation; Models hold request/response/view model types.

<img src="/assets/sample.png" width="300" alt="Preview">

## Adding routing

To navigate to another scene, implement in the Router: `routeToSomewhere(segue:)` (and optionally a programmatic variant), `navigateToSomewhere(source:destination:)`, and `passDataToSomewhere(source:destination:)` to pass data from this scene’s DataStore to the next scene’s DataStore. Use the same segue identifier in the storyboard so `prepare(for:sender:)` can call the router.

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
