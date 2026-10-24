.class public Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueAndFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private final decimalTextFormat:Ljava/text/DecimalFormat;

.field private final format:Ljava/lang/String;

.field private final string:Ljava/lang/String;

.field private final value:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;Ljava/lang/String;Ljava/text/DecimalFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->value:Ljava/lang/Double;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->format:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->string:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->decimalTextFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->value:Ljava/lang/Double;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->format:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->string:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->decimalTextFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;)Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->value:Ljava/lang/Double;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->compareTo(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;)I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->value:Ljava/lang/Double;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v2, p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->value:Ljava/lang/Double;

    if-eqz v2, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v2, p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->value:Ljava/lang/Double;

    const/4 v3, -0x1

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const/4 v4, 0x0

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->string:Ljava/lang/String;

    if-nez p0, :cond_4

    .line 5
    iget-object v0, p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->string:Ljava/lang/String;

    if-eqz v0, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object p1, p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->string:Ljava/lang/String;

    if-nez p1, :cond_5

    if-eqz p0, :cond_5

    return v3

    :cond_5
    if-nez p0, :cond_6

    goto :goto_1

    .line 7
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    :goto_1
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->value:Ljava/lang/Double;

    iget-object v2, p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->value:Ljava/lang/Double;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->format:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->format:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->string:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->string:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->string:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->value:Ljava/lang/Double;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->value:Ljava/lang/Double;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->format:Ljava/lang/String;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isNumber()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->value:Ljava/lang/Double;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->decimalTextFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->getValue()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
