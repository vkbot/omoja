.class Lcom/sun/jna/NativeString;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/NativeString$StringMemory;
    }
.end annotation


# static fields
.field static final WIDE_STRING:Ljava/lang/String; = "--WIDE-STRING--"


# instance fields
.field private encoding:Ljava/lang/String;

.field private pointer:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>(Lcom/sun/jna/WString;)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Lcom/sun/jna/WString;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "--WIDE-STRING--"

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/NativeString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/NativeString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iput-object p2, p0, Lcom/sun/jna/NativeString;->encoding:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "--WIDE-STRING--"

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    add-int/lit8 p2, p2, 0x1

    .line 21
    .line 22
    sget v0, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    .line 23
    .line 24
    mul-int/2addr p2, v0

    .line 25
    new-instance v0, Lcom/sun/jna/NativeString$StringMemory;

    .line 26
    .line 27
    int-to-long v1, p2

    .line 28
    invoke-direct {v0, p0, v1, v2}, Lcom/sun/jna/NativeString$StringMemory;-><init>(Lcom/sun/jna/NativeString;J)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/sun/jna/NativeString;->pointer:Lcom/sun/jna/Pointer;

    .line 32
    .line 33
    const-wide/16 v1, 0x0

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setWideString(JLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-static {p1, p2}, Lcom/sun/jna/Native;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    new-instance v3, Lcom/sun/jna/NativeString$StringMemory;

    .line 44
    .line 45
    array-length p1, v6

    .line 46
    add-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    int-to-long p1, p1

    .line 49
    invoke-direct {v3, p0, p1, p2}, Lcom/sun/jna/NativeString$StringMemory;-><init>(Lcom/sun/jna/NativeString;J)V

    .line 50
    .line 51
    .line 52
    iput-object v3, p0, Lcom/sun/jna/NativeString;->pointer:Lcom/sun/jna/Pointer;

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    array-length v8, v6

    .line 56
    const-wide/16 v4, 0x0

    .line 57
    .line 58
    invoke-virtual/range {v3 .. v8}, Lcom/sun/jna/Pointer;->write(J[BII)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/sun/jna/NativeString;->pointer:Lcom/sun/jna/Pointer;

    .line 62
    .line 63
    array-length p2, v6

    .line 64
    int-to-long v0, p2

    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-virtual {p1, v0, v1, p2}, Lcom/sun/jna/Pointer;->setByte(JB)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    const-string p1, "String must not be null"

    .line 71
    .line 72
    invoke-static {p1}, Ln0/b;->n(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 77
    const-string p2, "--WIDE-STRING--"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/NativeString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/NativeString;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/NativeString;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/CharSequence;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/sun/jna/NativeString;->compareTo(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    return v1
.end method

.method public getPointer()Lcom/sun/jna/Pointer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/jna/NativeString;->pointer:Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/NativeString;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public length()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/NativeString;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/NativeString;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "--WIDE-STRING--"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sun/jna/NativeString;->encoding:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/sun/jna/NativeString;->pointer:Lcom/sun/jna/Pointer;

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/NativeString;->encoding:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
