// definition of alphabet closure and language

import java.util.*;

public class definitions {
    public static void main(String[] args) {
        // alphabet closure
        Set<Character> alphabet = new HashSet<Character>();
        alphabet.add('a');
        // // Kleene closure | sign: *
        Set<Character> KleeneClosure = new HashSet<Character>();
        System.out.println("Kleene closure:");
        for (int i = 0; i < 5; i++) {
            for (Character c : alphabet) {
                KleeneClosure.add(c);
                System.out.println(KleeneClosure);
            }
        }
        // // Positive closure | sign: +
        Set<Character> PositiveClosure = new HashSet<Character>();
        System.out.println("Positive closure:");
        for (int i = 0; i < 5; i++) {
            for (Character c : alphabet) {
                PositiveClosure.add(c);
                System.out.println(PositiveClosure);
            }
        }

        System.out.println("Alphabet closure:");
        System.out.println(alphabet);

        // language
        System.out.println("Language:");
        System.out.println("Finite language:");
        Set<String> language = new HashSet<String>();
        language.add("a");
        language.add("aa");
        language.add("aaa");
        System.out.println("language#1: " + language);

        // // empty string language
        System.out.println("Empty string language:");
        Set<String> language2 = new HashSet<String>();
        language2.add("");
        if (language2.contains("")) {
            System.out.println("language#2 contains an empty string.");
        }
        
        // // zero strings language
        System.out.println("Zero strings language:");
        Set<String> language3 = new HashSet<String>();
        if (language3.isEmpty()) {
            System.out.println("language#3 is empty.");
        }


    }
}