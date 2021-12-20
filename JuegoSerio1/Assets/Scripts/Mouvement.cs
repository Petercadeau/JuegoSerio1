using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mouvement : MonoBehaviour
{
    public float speed = 2f;

    public float jumpSpeed = 4f;

    Rigidbody2D body;

    Animator animations;

    // Start is called before the first frame update
    void Start()
    {
        body = GetComponent<Rigidbody2D>();
        animations = GetComponent<Animator>();
    }

    private void FixedUpdate()
    {
        if (Input.GetKey("a") || Input.GetKey(KeyCode.LeftArrow))
        {
            body.velocity = new Vector2(-speed, body.velocity.y);
            GetComponent<SpriteRenderer>().flipX = true;
            animations.SetBool("Run", true);
        }
        else if (Input.GetKey("d") || Input.GetKey(KeyCode.RightArrow))
        {
            body.velocity = new Vector2(speed, body.velocity.y);
            GetComponent<SpriteRenderer>().flipX = false;
            animations.SetBool("Run", true);
        }
        else
        {
            body.velocity = new Vector2(0, body.velocity.y);
            animations.SetBool("Run", false);
        }

        if (CheckGround.isGrounded && Input.GetKey("space"))
        {
            body.velocity = new Vector2(body.velocity.x, jumpSpeed);
        }
    }
}
