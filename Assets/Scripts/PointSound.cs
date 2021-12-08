using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PointSound : MonoBehaviour
{
    public AudioSource winSound;
    
    public void OnTriggerEnter2D(Collider2D collision){
        if(collision.tag=="Correct"){
            winSound.Play();
        }
    }

}
