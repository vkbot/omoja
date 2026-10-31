.class public Lcom/sun/jna/StringArray;
.super Lcom/sun/jna/Memory;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/sun/jna/Function$PostCallRead;


# instance fields
.field private encoding:Ljava/lang/String;

.field private natives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/NativeString;",
            ">;"
        }
    .end annotation
.end field

.field private original:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lcom/sun/jna/WString;)V
    .locals 1

    .line 70
    const-string v0, "--WIDE-STRING--"

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    add-int/lit8 v0, v0, 0x1

    .line 3
    .line 4
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 5
    .line 6
    mul-int/2addr v0, v1

    .line 7
    int-to-long v0, v0

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/sun/jna/StringArray;->natives:Ljava/util/List;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/sun/jna/StringArray;->original:[Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/sun/jna/StringArray;->encoding:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    array-length v1, p1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-ge v0, v1, :cond_1

    .line 26
    .line 27
    aget-object v1, p1, v0

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    new-instance v2, Lcom/sun/jna/NativeString;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v2, v1, p2}, Lcom/sun/jna/NativeString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/sun/jna/StringArray;->natives:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/sun/jna/NativeString;->getPointer()Lcom/sun/jna/Pointer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_0
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 50
    .line 51
    mul-int/2addr v1, v0

    .line 52
    int-to-long v3, v1

    .line 53
    invoke-virtual {p0, v3, v4, v2}, Lcom/sun/jna/Memory;->setPointer(JLcom/sun/jna/Pointer;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sget p2, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 60
    .line 61
    array-length p1, p1

    .line 62
    mul-int/2addr p2, p1

    .line 63
    int-to-long p1, p2

    .line 64
    invoke-virtual {p0, p1, p2, v2}, Lcom/sun/jna/Memory;->setPointer(JLcom/sun/jna/Pointer;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 68
    const-string p2, "--WIDE-STRING--"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public read()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sun/jna/StringArray;->original:[Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, v0, [Lcom/sun/jna/WString;

    .line 4
    .line 5
    const-string v1, "--WIDE-STRING--"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/sun/jna/StringArray;->encoding:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/sun/jna/StringArray;->original:[Ljava/lang/Object;

    .line 15
    .line 16
    array-length v3, v3

    .line 17
    if-ge v2, v3, :cond_3

    .line 18
    .line 19
    sget v3, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 20
    .line 21
    mul-int/2addr v3, v2

    .line 22
    int-to-long v3, v3

    .line 23
    invoke-virtual {p0, v3, v4}, Lcom/sun/jna/Memory;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3, v4, v5}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object v6, p0, Lcom/sun/jna/StringArray;->encoding:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :goto_1
    if-eqz v0, :cond_2

    .line 45
    .line 46
    new-instance v4, Lcom/sun/jna/WString;

    .line 47
    .line 48
    invoke-direct {v4, v3}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    move-object v3, v4

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    const/4 v3, 0x0

    .line 54
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/sun/jna/StringArray;->original:[Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v3, v4, v2

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "--WIDE-STRING--"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sun/jna/StringArray;->encoding:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "const wchar_t*[]"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "const char*[]"

    .line 15
    .line 16
    :goto_0
    invoke-static {v0}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/sun/jna/StringArray;->original:[Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
