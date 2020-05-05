# GATE Abner Tagger

### Build

| Branch | Status |
|--------|--------|
| Develop | ![Java CI with Maven](https://github.com/lappsgrid-incubator/gate-abner/workflows/Java%20CI%20with%20Maven/badge.svg?branch=develop) |
| Master | ![Java CI with Maven](https://github.com/lappsgrid-incubator/gate-abner/workflows/Java%20CI%20with%20Maven/badge.svg?branch=master) |

### Deployment

[![Maven Central](https://maven-badges.herokuapp.com/maven-central/org.lappsgrid.gate/gate-abner/badge.svg?style=plastic)](https://maven-badges.herokuapp.com/maven-central/org.lappsgrid.gate/gate-abner)


# Description

Provides a AbnerTagger tagger class as a standalone program/library.  This package expects the GATE Abner Tagger to be available on the local system.  The AbnerTagger class will look for plugins in:

1. The location specified by the system environment variable **$GATE_HOME**.
1. The location specified by the Java System property named **GATE_HOME**.
1. `/usr/local/gate`
1. `/home/gate`
1. `/gate`

## Usage

```java

import org.lappsgrid.gate.abner.AbnerTagger;
import gate.Document;

public class Example {
	public static void main(String[] args) {
		AbnerTagger tagger = new AbnerTagger();
        Document doc = AbnerTagger.createDocmentFromText("Hello world.");
        tagger.execute(doc);
        System.out.prinln(doc.toXml());
	}
}
```