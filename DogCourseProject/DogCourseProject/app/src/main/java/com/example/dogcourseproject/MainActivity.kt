package com.example.dogcourseproject

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

//Eric Becker
//Course Project
//2/09/2024

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val actionBar = supportActionBar
        actionBar!!.setIcon(R.mipmap.ic_launcher_foreground)
        actionBar.setDisplayUseLogoEnabled(true)
        actionBar.setDisplayUseLogoEnabled(true)

        val dog1Button = findViewById<Button>(R.id.btnRose)
        dog1Button.setOnClickListener {
            startActivity(Intent(this, RoseActivity::class.java))
        }
        val dog2Button = findViewById<Button>(R.id.btnArco)
        dog2Button.setOnClickListener {
            startActivity(Intent(this, Arco::class.java))
        }
        val dog3Button = findViewById<Button>(R.id.btnLily)
        dog3Button.setOnClickListener {
            startActivity(Intent(this, Lily::class.java))
        }
        val dog4Button= findViewById<Button>(R.id.btnPaul)
        dog4Button.setOnClickListener {
            startActivity(Intent(this, Paul::class.java))
        }
    }
}