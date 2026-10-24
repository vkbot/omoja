.class public Lorg/apache/logging/log4j/core/Version;
.super Ljava/lang/Object;
.source "Version.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProductString()Ljava/lang/String;
    .locals 4

    .line 27
    const-class v0, Lorg/apache/logging/log4j/core/Version;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 28
    .local v0, "pkg":Ljava/lang/Package;
    if-nez v0, :cond_0

    .line 29
    const-string v1, "Apache Log4j"

    return-object v1

    .line 31
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    .line 23
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/apache/logging/log4j/core/Version;->getProductString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    return-void
.end method
