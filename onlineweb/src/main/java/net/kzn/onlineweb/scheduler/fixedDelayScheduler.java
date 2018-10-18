package net.kzn.onlineweb.scheduler;

import java.util.Date;

import org.springframework.scheduling.annotation.Scheduled;

public class fixedDelayScheduler {

	@Scheduled(fixedDelay = 5000)
	public void run() throws InterruptedException{
		System.out.println("Cron scheduler is running at " + new Date());
		Thread.sleep(3000);
		
		
	}
	
}
