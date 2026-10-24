.class Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;
.super Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringLookupComparer"
.end annotation


# instance fields
.field protected final _isMatchFunction:Z

.field protected final _matchExact:Z

.field protected final _value:Ljava/lang/String;

.field protected final _wildCardPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/StringEval;ZZ)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_value:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->getWildCardPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_wildCardPattern:Ljava/util/regex/Pattern;

    iput-boolean p2, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_matchExact:Z

    iput-boolean p3, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_isMatchFunction:Z

    return-void
.end method


# virtual methods
.method public compareSameType(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->convertToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_wildCardPattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_isMatchFunction:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_matchExact:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->valueOf(Z)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->valueOf(I)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object p0

    return-object p0
.end method

.method public convertToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_value:Ljava/lang/String;

    return-object p0
.end method
