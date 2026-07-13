import { world } from "@minecraft/server";

world.events.tick.subscribe(() => {
    try {
        loadLightningVersion("original");
    } catch (e) {}
});

function loadLightningVersion(version) {
    world.events.tick.unsubscribe();

    if (version === "original") {
        import("./subpacks/original/scripts/main.js");
    } else if (version === "smarter") {
        import("./subpacks/smarter/scripts/main.js");
    }
}