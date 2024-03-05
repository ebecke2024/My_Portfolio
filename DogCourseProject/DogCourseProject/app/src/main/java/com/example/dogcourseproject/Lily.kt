package com.example.dogcourseproject

import android.app.DatePickerDialog
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Locale

//Eric Becker
//Course Project
//2/09/2024

class Lily : AppCompatActivity() {
    private lateinit var bDate: Button
    private lateinit var txtAppointment: TextView
    private val cal = Calendar.getInstance()
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_lily)

        bDate = findViewById(R.id.btnLilyAppointment)
        txtAppointment = findViewById(R.id.txtLilyAppointment)
        bDate.setOnClickListener {
            showDatePicker()
        }
    }
    private fun showDatePicker() {
        val dpd = DatePickerDialog(this,
            {DatePicker, year: Int, monthOfYear: Int, dayOfMonth: Int ->
                val appDate = Calendar.getInstance()
                appDate.set(year, monthOfYear, dayOfMonth)
                val dateFormat = SimpleDateFormat("MM/dd/yyyy", Locale.getDefault())
                val formattedDate = dateFormat.format(appDate.time)
                txtAppointment.text = "Your Appointment with Bill Alexander is $formattedDate"
            },

            cal.get(Calendar.YEAR),
            cal.get(Calendar.MONTH),
            cal.get(Calendar.DAY_OF_MONTH)
        )
        dpd.show()
    }

}