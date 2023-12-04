package testesAPI;

import com.intuit.karate.junit5.Karate;

 class RMRunner{
    @Karate.Test
    Karate testRickAndMorty(){
        return Karate.run("RM").relativeTo(getClass());
    }

}