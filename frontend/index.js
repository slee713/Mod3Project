document.addEventListener("DOMContentLoaded", ()=>{
    let gameCanvas = document.querySelector("canvas#game-canvas")
    let engine = new BABYLONG.Engine(gameCanvas, true);

    let createScene = function() {
        let scene = new BABYLON.Scene(engine);
        scene.clearColor = new BABYLONG.Color3.White();
        let camera = new BABYLON.FreeCamera("camera1", 
            new BABYLON.Vector(0,0,-10), scene);
        camera.setTarget(BABYLON.Vector3.Zero());
        let box = BABYLON.Mesh.CreateBox("box", 4.0, scene);
        return scene;
    }
    let scene = createScene();
    engine.runRenderLoop(function(){
        scene.render();
    })
})

