//
//  ViewController.swift
//  Reproductor de Música
//
//  Created by Administrador on 02/10/16.
//  Copyright © 2016 ITESO. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    private var reproductor : AVAudioPlayer!
    
    @IBOutlet weak var imagenCancion: UIImageView!
    @IBOutlet weak var tituloCancion: UILabel!
    @IBOutlet weak var volumen: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let sonidoURL = Bundle.main.url(forResource: "Back in black", withExtension: "mp3")
        
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
            tituloCancion.text = "Back in black"
            imagenCancion.image = UIImage(named: "acdc-back-in-black.jpg")
            reproductor.volume = 1.0
            volumen.text = String(reproductor.volume)
        }catch{
            print("Error al cargar el archivo")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func play() {
        if !reproductor.isPlaying{
            reproductor.play()
        }
    }
    
    @IBAction func pause() {
        if reproductor.isPlaying{
            reproductor.pause()
        }
    }
    
    @IBAction func stop() {
        if reproductor.isPlaying{
            reproductor.stop()
            reproductor.currentTime = 0.0
        }
    }
    
    @IBAction func volumeSubir() {
//        if reproductor.volume >= 0.0 && reproductor.volume <= 1.0{
            reproductor.volume += 0.1
        volumen.text = String(reproductor.volume)
        
//        }
    }
    
    @IBAction func volumeBajar() {
//        if reproductor.volume <= 0.0 && reproductor.volume >= 1.0{
            reproductor.volume -= 0.1
        volumen.text = String(reproductor.volume)
//        }
    }
    
    @IBAction func cancion1() {
        let sonidoURL = Bundle.main.url(forResource: "Back in black", withExtension: "mp3")
        
        tituloCancion.text = "Back in black"
        imagenCancion.image = UIImage(named: "acdc-back-in-black.jpg")
        volumen.text = String(reproductor.volume)
        
        if reproductor.isPlaying{
            reproductor.stop()
        }
        
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
            reproductor.play()
        }catch{
            print("Error al cargar el archivo")
        }
    }
    
    @IBAction func cancion2() {
        let sonidoURL = Bundle.main.url(forResource: "Highway To Hell", withExtension: "mp3")
        
        tituloCancion.text = "Highway To Hell"
        imagenCancion.image = UIImage(named: "Highway.jpg")
        volumen.text = String(reproductor.volume)
        
        if reproductor.isPlaying{
            reproductor.stop()
        }
        
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
            reproductor.play()
        }catch{
            print("Error al cargar el archivo")
        }
    }

    @IBAction func cancion3() {
        let sonidoURL = Bundle.main.url(forResource: "Piano Man", withExtension: "mp3")
        
        tituloCancion.text = "Piano Man"
        imagenCancion.image = UIImage(named: "Billy_Joel_Piano_Man.jpg")
        volumen.text = String(reproductor.volume)
        
        if reproductor.isPlaying{
            reproductor.stop()
        }
        
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
            reproductor.play()
        }catch{
            print("Error al cargar el archivo")
        }
    }

    @IBAction func cancion4() {
        let sonidoURL = Bundle.main.url(forResource: "Smooth Criminal", withExtension: "mp3")
        
        tituloCancion.text = "Smooth Criminal"
        imagenCancion.image = UIImage(named: "Smooth.jpg")
        volumen.text = String(reproductor.volume)
        
        if reproductor.isPlaying{
            reproductor.stop()
        }
        
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
            reproductor.play()
        }catch{
            print("Error al cargar el archivo")
        }
    }
    
    @IBAction func cancion5() {
        let sonidoURL = Bundle.main.url(forResource: "Superstition", withExtension: "mp3")
        
        tituloCancion.text = "Superstition"
        imagenCancion.image = UIImage(named: "Stevie_wonder-superstition.jpg")
        volumen.text = String(reproductor.volume)
        
        if reproductor.isPlaying{
            reproductor.stop()
        }
        
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
            reproductor.play()
        }catch{
            print("Error al cargar el archivo")
        }
    }
    
    @IBAction func aleatorio() {
        let randomNum:UInt32 = arc4random_uniform(5)
        let alea:Int = Int(randomNum)
        
        switch alea {
        case 0:
            let sonidoURL = Bundle.main.url(forResource: "Back in black", withExtension: "mp3")
            
            tituloCancion.text = "Back in black"
            imagenCancion.image = UIImage(named: "acdc-back-in-black.jpg")
            volumen.text = String(reproductor.volume)
            
            if reproductor.isPlaying{
                reproductor.stop()
            }
            
            do{
                try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
                reproductor.play()
            }catch{
                print("Error al cargar el archivo")
            }
            
            break;
        case 1:
            let sonidoURL = Bundle.main.url(forResource: "Highway To Hell", withExtension: "mp3")
            
            tituloCancion.text = "Highway To Hell"
            imagenCancion.image = UIImage(named: "Highway.jpg")
            volumen.text = String(reproductor.volume)
            
            if reproductor.isPlaying{
                reproductor.stop()
            }
            
            do{
                try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
                reproductor.play()
            }catch{
                print("Error al cargar el archivo")
            }
            break;
        case 2:
            let sonidoURL = Bundle.main.url(forResource: "Piano Man", withExtension: "mp3")
            
            tituloCancion.text = "Piano Man"
            imagenCancion.image = UIImage(named: "Billy_Joel_Piano_Man.jpg")
            volumen.text = String(reproductor.volume)
            
            if reproductor.isPlaying{
                reproductor.stop()
            }
            
            do{
                try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
                reproductor.play()
            }catch{
                print("Error al cargar el archivo")
            }
            break;
        case 3:
            let sonidoURL = Bundle.main.url(forResource: "Smooth Criminal", withExtension: "mp3")
            
            tituloCancion.text = "Smooth Criminal"
            imagenCancion.image = UIImage(named: "Smooth.jpg")
            volumen.text = String(reproductor.volume)
            
            if reproductor.isPlaying{
                reproductor.stop()
            }
            
            do{
                try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
                reproductor.play()
            }catch{
                print("Error al cargar el archivo")
            }
            break;
        case 4:
            let sonidoURL = Bundle.main.url(forResource: "Superstition", withExtension: "mp3")
            
            tituloCancion.text = "Superstition"
            imagenCancion.image = UIImage(named: "Stevie_wonder-superstition.jpg")
            volumen.text = String(reproductor.volume)
            
            if reproductor.isPlaying{
                reproductor.stop()
            }
            
            do{
                try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
                reproductor.play()
            }catch{
                print("Error al cargar el archivo")
            }
            break;
        default:
                
            break;
        }
        
    }
    
}

