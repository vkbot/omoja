.class public final enum Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;
.super Ljava/lang/Enum;
.source "ExtensionLanguageMapping.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum AWK:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum BEANSHELL:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum BSH:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum CLJ:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum EJS:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum FREEMARKER:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum FTL:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum GROOVY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum GVY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum HS:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum JAVASCRIPT:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum JELLY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum JEP:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum JEXL:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum JEXL2:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum JS:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum JUDI:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum JUDO:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum JY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum JYTHON:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum RB:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum RUBY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum SCALA:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum TCL:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum VELOCITY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

.field public static final enum VM:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;


# instance fields
.field private final extension:Ljava/lang/String;

.field private final language:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "JS"

    const/4 v2, 0x0

    const-string v3, "js"

    const-string v4, "JavaScript"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JS:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "JAVASCRIPT"

    const/4 v3, 0x1

    const-string v5, "javascript"

    invoke-direct {v0, v1, v3, v5, v4}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JAVASCRIPT:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "GVY"

    const/4 v4, 0x2

    const-string v5, "gvy"

    const-string v6, "Groovy"

    invoke-direct {v0, v1, v4, v5, v6}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->GVY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    .line 27
    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "GROOVY"

    const/4 v5, 0x3

    const-string v7, "groovy"

    invoke-direct {v0, v1, v5, v7, v6}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->GROOVY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "BSH"

    const/4 v6, 0x4

    const-string v7, "bsh"

    const-string v8, "beanshell"

    invoke-direct {v0, v1, v6, v7, v8}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->BSH:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "BEANSHELL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v8, v8}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->BEANSHELL:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    .line 28
    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "JY"

    const/4 v8, 0x6

    const-string v9, "jy"

    const-string v10, "jython"

    invoke-direct {v0, v1, v8, v9, v10}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "JYTHON"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v10, v10}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JYTHON:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "FTL"

    const/16 v10, 0x8

    const-string v11, "ftl"

    const-string v12, "freemarker"

    invoke-direct {v0, v1, v10, v11, v12}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->FTL:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    .line 29
    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "FREEMARKER"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v12, v12}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->FREEMARKER:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "VM"

    const/16 v12, 0xa

    const-string v13, "vm"

    const-string v14, "velocity"

    invoke-direct {v0, v1, v12, v13, v14}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->VM:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "VELOCITY"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v14, v14}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->VELOCITY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    .line 30
    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "AWK"

    const/16 v14, 0xc

    const-string v15, "awk"

    invoke-direct {v0, v1, v14, v15, v15}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->AWK:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "EJS"

    const/16 v15, 0xd

    const-string v14, "ejs"

    const-string v13, "ejs"

    invoke-direct {v0, v1, v15, v14, v13}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->EJS:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "TCL"

    const/16 v13, 0xe

    const-string v14, "tcl"

    const-string v15, "tcl"

    invoke-direct {v0, v1, v13, v14, v15}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->TCL:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "HS"

    const/16 v13, 0xf

    const-string v14, "hs"

    const-string v15, "jaskell"

    invoke-direct {v0, v1, v13, v14, v15}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->HS:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "JELLY"

    const/16 v13, 0x10

    const-string v14, "jelly"

    const-string v15, "jelly"

    invoke-direct {v0, v1, v13, v14, v15}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JELLY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    .line 31
    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "JEP"

    const/16 v13, 0x11

    const-string v14, "jep"

    const-string v15, "jep"

    invoke-direct {v0, v1, v13, v14, v15}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JEP:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "JEXL"

    const/16 v13, 0x12

    const-string v14, "jexl"

    const-string v15, "jexl"

    invoke-direct {v0, v1, v13, v14, v15}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JEXL:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "JEXL2"

    const/16 v13, 0x13

    const-string v14, "jexl2"

    const-string v15, "jexl2"

    invoke-direct {v0, v1, v13, v14, v15}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JEXL2:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    .line 32
    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "RB"

    const/16 v13, 0x14

    const-string v14, "rb"

    const-string v15, "ruby"

    invoke-direct {v0, v1, v13, v14, v15}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->RB:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "RUBY"

    const/16 v13, 0x15

    invoke-direct {v0, v1, v13, v15, v15}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->RUBY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "JUDO"

    const/16 v13, 0x16

    const-string v14, "judo"

    invoke-direct {v0, v1, v13, v14, v14}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JUDO:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "JUDI"

    const/16 v13, 0x17

    const-string v15, "judi"

    invoke-direct {v0, v1, v13, v15, v14}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JUDI:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "SCALA"

    const/16 v13, 0x18

    const-string v14, "scala"

    const-string v15, "scala"

    invoke-direct {v0, v1, v13, v14, v15}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->SCALA:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    .line 33
    new-instance v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const-string v1, "CLJ"

    const/16 v13, 0x19

    const-string v14, "clj"

    const-string v15, "Clojure"

    invoke-direct {v0, v1, v13, v14, v15}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->CLJ:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    .line 25
    const/16 v1, 0x1a

    new-array v1, v1, [Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    sget-object v13, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JS:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    aput-object v13, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JAVASCRIPT:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->GVY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->GROOVY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->BSH:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->BEANSHELL:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JYTHON:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->FTL:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    aput-object v2, v1, v10

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->FREEMARKER:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    aput-object v2, v1, v11

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->VM:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    aput-object v2, v1, v12

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->VELOCITY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->AWK:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->EJS:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->TCL:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->HS:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JELLY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JEP:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JEXL:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JEXL2:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->RB:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->RUBY:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JUDO:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->JUDI:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->SCALA:Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const/16 v2, 0x19

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->$VALUES:[Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "extension"    # Ljava/lang/String;
    .param p4, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "extension",
            "language"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->extension:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->language:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static getByExtension(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;
    .locals 5
    .param p0, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .line 53
    invoke-static {}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->values()[Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 54
    .local v3, "mapping":Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;
    iget-object v4, v3, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->extension:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    return-object v3

    .line 53
    .end local v3    # "mapping":Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getByLanguage(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "language"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->values()[Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 64
    .local v4, "mapping":Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;
    iget-object v5, v4, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->language:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v4    # "mapping":Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 25
    const-class v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;
    .locals 1

    .line 25
    sget-object v0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->$VALUES:[Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    return-object v0
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->language:Ljava/lang/String;

    return-object v0
.end method
