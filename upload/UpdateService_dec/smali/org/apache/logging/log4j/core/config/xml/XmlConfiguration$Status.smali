.class Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;
.super Ljava/lang/Object;
.source "XmlConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Status"
.end annotation


# instance fields
.field private final element:Lorg/w3c/dom/Element;

.field private final errorType:Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$ErrorType;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$ErrorType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "errorType"    # Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$ErrorType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "element",
            "errorType"
        }
    .end annotation

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;->name:Ljava/lang/String;

    .line 374
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;->element:Lorg/w3c/dom/Element;

    .line 375
    iput-object p3, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;->errorType:Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$ErrorType;

    .line 376
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;

    .line 367
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;)Lorg/w3c/dom/Element;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;

    .line 367
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;->element:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;)Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$ErrorType;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;

    .line 367
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;->errorType:Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$ErrorType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", element="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;->element:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;->errorType:Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$ErrorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
