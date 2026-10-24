.class public Lorg/apache/poi/ss/formula/functions/Roman;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"


# static fields
.field private static final REPLACEMENTS:[[Ljava/lang/String;

.field private static final ROMAN:[Ljava/lang/String;

.field private static final VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Roman;->VALUES:[I

    const-string v1, "M"

    const-string v2, "CM"

    const-string v3, "D"

    const-string v4, "CD"

    const-string v5, "C"

    const-string v6, "XC"

    const-string v7, "L"

    const-string v8, "XL"

    const-string v9, "X"

    const-string v10, "IX"

    const-string v11, "V"

    const-string v12, "IV"

    const-string v13, "I"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Roman;->ROMAN:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "XLV"

    const-string v2, "VL"

    const-string v3, "XCV"

    const-string v4, "VC"

    const-string v5, "CDL"

    const-string v6, "LD"

    const-string v7, "CML"

    const-string v8, "LM"

    const-string v9, "CMVC"

    const-string v10, "LMVL"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "CDXC"

    const-string v4, "LDXL"

    const-string v5, "CDVC"

    const-string v6, "LDVL"

    const-string v7, "CMXC"

    const-string v8, "LMXL"

    const-string v9, "XCIX"

    const-string v10, "VCIV"

    const-string v11, "XLIX"

    const-string v12, "VLIV"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v3, "XLIX"

    const-string v4, "IL"

    const-string v5, "XCIX"

    const-string v6, "IC"

    const-string v7, "CDXC"

    const-string v8, "XD"

    const-string v9, "CDVC"

    const-string v10, "XDV"

    const-string v11, "CDIC"

    const-string v12, "XDIX"

    const-string v13, "LMVL"

    const-string v14, "XMV"

    const-string v15, "CMIC"

    const-string v16, "XMIX"

    const-string v17, "CMXC"

    const-string v18, "XM"

    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v3, "XDV"

    const-string v4, "VD"

    const-string v5, "XDIX"

    const-string v6, "VDIV"

    const-string v7, "XMV"

    const-string v8, "VM"

    const-string v9, "XMIX"

    const-string v10, "VMIV"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "VMIV"

    const-string v2, "IM"

    const-string v3, "VDIV"

    const-string v4, "ID"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Roman;->REPLACEMENTS:[[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x3e8
        0x384
        0x1f4
        0x190
        0x64
        0x5a
        0x32
        0x28
        0xa
        0x9
        0x5
        0x4
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method

.method private integerToRoman(I)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_1

    :goto_1
    sget-object v1, Lorg/apache/poi/ss/formula/functions/Roman;->VALUES:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_0

    sub-int/2addr p1, v1

    sget-object v1, Lorg/apache/poi/ss/formula/functions/Roman;->ROMAN:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    if-gez p3, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/16 v0, 0xf9f

    if-le p3, v0, :cond_1

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_1
    if-nez p3, :cond_2

    new-instance p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    const-string p1, ""

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p1
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p2, 0x4

    if-gt p1, p2, :cond_5

    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3}, Lorg/apache/poi/ss/formula/functions/Roman;->integerToRoman(I)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_4

    new-instance p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_4
    new-instance p3, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/ss/formula/functions/Roman;->makeConcise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p3

    :cond_5
    :goto_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :catch_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :catch_1
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method

.method public makeConcise(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-gt v0, p2, :cond_2

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    if-lez p2, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-le p2, v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Roman;->REPLACEMENTS:[[Ljava/lang/String;

    aget-object v2, v2, v0

    move v3, p0

    :goto_1
    array-length v4, v2

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v2, v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method
