.class Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyledSection"
.end annotation


# instance fields
.field endStyles:Ljava/lang/String;

.field length:I

.field startIndex:I

.field startStyles:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "style1"    # Ljava/lang/String;
    .param p4, "style2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "start",
            "len",
            "style1",
            "style2"
        }
    .end annotation

    .line 4404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4405
    iput p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->startIndex:I

    iput p2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->length:I

    iput-object p3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->startStyles:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->endStyles:Ljava/lang/String;

    .line 4406
    return-void
.end method


# virtual methods
.method withStartIndex(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
    .locals 4
    .param p1, "newStart"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newStart"
        }
    .end annotation

    .line 4408
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;

    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->length:I

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->startStyles:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->endStyles:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
