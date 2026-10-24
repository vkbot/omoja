.class final Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x186a0

.field private static final DIGIT_ENDING_FUNCTION_NAMES:[Ljava/lang/String;

.field private static final DIGIT_ENDING_FUNCTION_NAMES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELLIPSIS:Ljava/lang/String; = "..."

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static MAX_RECORD_LENGTH:I = 0x186a0

.field private static final METADATA_FILE_NAME:Ljava/lang/String; = "functionMetadata.txt"

.field private static final METADATA_FILE_NAME_CETAB:Ljava/lang/String; = "functionMetadataCetab.txt"

.field private static final SPACE_DELIM_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAB_DELIM_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\t"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->TAB_DELIM_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->SPACE_DELIM_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->EMPTY_BYTE_ARRAY:[B

    const-string v1, "LOG10"

    const-string v2, "ATAN2"

    const-string v3, "DAYS360"

    const-string v4, "SUMXMY2"

    const-string v5, "SUMX2MY2"

    const-string v6, "SUMX2PY2"

    const-string v7, "A1.R1C1"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->DIGIT_ENDING_FUNCTION_NAMES:[Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->DIGIT_ENDING_FUNCTION_NAMES_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRegistry()Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;-><init>(I)V

    const-string v1, "functionMetadata.txt"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->readResourceFile(Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->build()Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;

    move-result-object v0

    return-object v0
.end method

.method public static createRegistryCetab()Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;-><init>(I)V

    const-string v1, "functionMetadataCetab.txt"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->readResourceFile(Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->build()Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private static isDash(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Value \'"

    const-string v2, "\' could not be parsed as an integer"

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseOperandTypeCode(Ljava/lang/String;)B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-eq v1, v2, :cond_2

    const/16 v2, 0x52

    if-eq v1, v2, :cond_1

    const/16 v2, 0x56

    if-ne v1, v2, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected operand type code \'"

    const-string v3, "\' ("

    invoke-static {v2, p0, v3}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return v0

    :cond_2
    const/16 p0, 0x40

    return p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad operand type code format \'"

    const-string v2, "\' expected single char"

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseOperandTypeCodes(Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->isDash(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->SPACE_DELIM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    const-string v2, "..."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    int-to-long v1, v0

    sget v3, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->MAX_RECORD_LENGTH:I

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseOperandTypeCode(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static parseReturnTypeCode(Ljava/lang/String;)B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseOperandTypeCode(Ljava/lang/String;)B

    move-result p0

    return p0
.end method

.method private static processLine(Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;Ljava/lang/String;)V
    .locals 10

    sget-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->TAB_DELIM_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    aget-object v1, v0, p1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x1

    aget-object v4, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseReturnTypeCode(Ljava/lang/String;)B

    move-result v7

    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseOperandTypeCodes(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    move v9, p1

    :goto_0
    invoke-static {v4}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->validateFunctionName(Ljava/lang/String;)V

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->add(ILjava/lang/String;IIB[BZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad line format \'"

    const-string v2, "\' - expected 8 data fields delimited by tab, but had "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readResourceFile(Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;Ljava/lang/String;)V
    .locals 5

    const-string v0, "resource \'"

    :try_start_0
    const-class v1, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x23

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->processLine(Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_5

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :goto_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method private static validateFunctionName(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->DIGIT_ENDING_FUNCTION_NAMES_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid function name \'"

    const-string v2, "\' (is footnote number incorrectly appended)"

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
