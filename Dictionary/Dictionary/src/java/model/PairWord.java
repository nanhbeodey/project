/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


/**
 *
 * @author Nanhbeo
 */

public class PairWord {
    EnglishWords englishWords;
    VNWords vnWords;

    public PairWord() {
    }

    public PairWord(EnglishWords englishWords, VNWords vnWords) {
        this.englishWords = englishWords;
        this.vnWords = vnWords;
    }

    public EnglishWords getEnglishWords() {
        return englishWords;
    }

    public void setEnglishWords(EnglishWords englishWords) {
        this.englishWords = englishWords;
    }

    public VNWords getVnWords() {
        return vnWords;
    }

    public void setVnWords(VNWords vnWords) {
        this.vnWords = vnWords;
    }
    
}
