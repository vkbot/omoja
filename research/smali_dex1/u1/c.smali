.class public final Lu1/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/text/TextWatcher;


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/16 p3, 0x19

    .line 14
    .line 15
    new-array p3, p3, [B

    .line 16
    .line 17
    fill-array-data p3, :array_22

    .line 18
    .line 19
    .line 20
    const/16 p4, 0x8

    .line 21
    .line 22
    new-array p4, p4, [B

    .line 23
    .line 24
    fill-array-data p4, :array_34

    .line 25
    .line 26
    .line 27
    invoke-static {p3, p4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p2, p3, p1}, Lu0/a;->saveInt(Ljava/lang/String;I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_21

    .line 32
    .line 33
    .line 34
    :catch_21
    return-void

    .line 35
    :array_22
    .array-data 1
        0xet
        0x0t
        -0x68t
        -0x76t
        0x1t
        0x11t
        0x5dt
        -0x19t
        0x2ct
        0x17t
        -0x68t
        -0x7at
        0x12t
        0x6dt
        0x79t
        -0xft
        0x27t
        0xct
        -0x6dt
        -0x50t
        0xft
        0x36t
        0x4at
        -0x19t
        0x26t
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    nop

    .line 53
    :array_34
    .array-data 1
        0x43t
        0x65t
        -0x4t
        -0x1dt
        0x60t
        0x43t
        0x38t
        -0x7ct
    .end array-data
.end method
