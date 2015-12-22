package service.impl;

import java.util.List;

import entity.Words;

public interface WordsService {
	
	
	public void addWords(Words words);
	public List<Words> getWordsbyPages(int first,int max);
	public List<Words> getWordsbySid(String sid);
	public int getSize();
	
}
