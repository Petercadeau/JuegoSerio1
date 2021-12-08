using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MultiplicationScript : MonoBehaviour
{
    public Text winLabel;
    public AudioSource winSound;
    public AudioSource loseSound;
    
    public void OnTriggerEnter2D(Collider2D collision){
        if(collision.tag=="Correct"){
            winLabel.text="Respuesta correcta";
            winSound.Play();
        }
        else if(collision.tag=="Incorrect"){
            winLabel.text="Respuesta incorrecta";
            loseSound.Play();
        }
    }

    public void OnTriggerExit2D(Collider2D collision){
        if(collision.tag=="Incorrect"){
            winLabel.text="";
        }
    }
}
