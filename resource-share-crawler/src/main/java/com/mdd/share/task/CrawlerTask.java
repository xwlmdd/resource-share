package com.mdd.share.task;

import com.mdd.share.crawler.LiangGuiZhaoBolgCrawler;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/5/12.
 */
@Service
public class CrawlerTask {

    @Resource
    private LiangGuiZhaoBolgCrawler liangGuiZhaoBolgCrawler;

    @Scheduled(cron = "0 55 11 ? * *")
    private void startCrawler(){
        liangGuiZhaoBolgCrawler.crawl();
    }

}
