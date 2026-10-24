.class Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$CharacterLiteral;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterLiteral"
.end annotation


# instance fields
.field private final mValue:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "value"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    iput-char p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$CharacterLiteral;->mValue:C

    .line 788
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "calendar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 803
    iget-char v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$CharacterLiteral;->mValue:C

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 804
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 795
    const/4 v0, 0x1

    return v0
.end method
