.class Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Palette256Color;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Palette256Color"
.end annotation


# instance fields
.field private final color:I

.field private final fgbg:I


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 3
    .param p1, "foreground"    # Z
    .param p2, "color"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "foreground",
            "color"
        }
    .end annotation

    .line 4387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4388
    if-eqz p1, :cond_0

    const/16 v0, 0x26

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_0
    iput v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Palette256Color;->fgbg:I

    .line 4389
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4390
    .local v0, "rgb":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 4391
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x24

    add-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Palette256Color;->color:I

    goto :goto_1

    .line 4393
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Palette256Color;->color:I

    .line 4395
    :goto_1
    return-void
.end method


# virtual methods
.method public off()Ljava/lang/String;
    .locals 2

    .line 4399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u001b["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Palette256Color;->fgbg:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public on()Ljava/lang/String;
    .locals 3

    .line 4397
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Palette256Color;->fgbg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Palette256Color;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "\u001b[%d;5;%dm"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
