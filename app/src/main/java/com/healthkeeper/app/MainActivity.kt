package com.healthkeeper.app

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.healthkeeper.app.ui.theme.HealthKeeperTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            HealthKeeperTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    HealthKeeperApp()
                }
            }
        }
    }
}

@Composable
fun HealthKeeperApp() {
    var habitCount by remember { mutableStateOf(0) }
    var moodEntries by remember { mutableStateOf(listOf<String>()) }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Text(
            text = "🐦 HealthKeeper",
            style = MaterialTheme.typography.headlineLarge,
            modifier = Modifier.padding(bottom = 24.dp)
        )

        Text(
            text = "일일 체크인",
            style = MaterialTheme.typography.titleMedium,
            modifier = Modifier.padding(bottom = 16.dp)
        )

        // Habit Tracker
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(bottom = 16.dp),
            horizontalArrangement = Arrangement.Center,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text("완료한 습관: $habitCount")
            Spacer(modifier = Modifier.width(8.dp))
            Button(onClick = { habitCount++ }) {
                Text("+1")
            }
        }

        // Daily Check-in
        Button(
            onClick = { moodEntries = moodEntries + "오늘 기분: 좋음 ✅" },
            modifier = Modifier
                .fillMaxWidth()
                .padding(bottom = 8.dp)
        ) {
            Text("오늘의 기분 체크 📝")
        }

        // Breathing Exercise
        Button(
            onClick = { /* Breathing guide */ },
            modifier = Modifier
                .fillMaxWidth()
                .padding(bottom = 8.dp)
        ) {
            Text("호흡 명상 🧘")
        }

        // View Entries
        if (moodEntries.isNotEmpty()) {
            Text(
                text = "기록:",
                style = MaterialTheme.typography.titleSmall,
                modifier = Modifier
                    .align(Alignment.Start)
                    .padding(top = 16.dp)
            )
            moodEntries.forEach { entry ->
                Text(
                    text = entry,
                    modifier = Modifier.padding(top = 4.dp)
                )
            }
        }
    }
}
