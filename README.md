TatamiCustomization
================

Presentation
------------------

Tatami is an excellent Open Source enterprise social network, see https://github.com/ippontech/tatami.

TatamiCustomization is a *very* simple template project to help you customize Tatami for your company.

TatamiCustomization helps you customizing :

* login page
* messages
* logo
* mails templates and texts
* etc.


Using TatamiCustomization
--------------------------

### Build and install tatami artifact

```
mkdir tatami
cd tatami
git clone https://github.com/ippontech/tatami
mvn clean install
```

Please note that you **must**  ```mvn install``` tatami because tatamiCustomization declares it as a dependency.

### clone tatamiCustomization and build it

```
mkdir myCustomization
git clone https://github.com/PierreRust/tatamiCustomization
[ Do your modifications]
mvn clean package
```

This should produce a tatamiCustomization-<version>.war file. This war file contains tatami application but any resources
 (images, png, jsp, vm, etc.) defined in tatamiCustomization overrides the same file from tatami (this is done by using
 overlays and the maven-war-plugin).
This new war must then be used instead of tatami's war when deploying your custom instance.

### During development

During your customization's development, you'll probably want to use jetty to avoid redeploying your war every few minutes.
Of course this should be run in your customization directory (and not in tatami's project directory otherwise it will
run tatami without your modifications).

```
mvn jetty:run
```

TatamiCustomization is only a starting point. You should clone it, make any necessary changes and probably
push it back to your own git repository.