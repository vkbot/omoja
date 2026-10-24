.class public final Ln5/d;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 12

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const v1, 0xfffe

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    new-instance v3, Ln5/c;

    invoke-direct {v3, p0, v0, v2}, Ln5/c;-><init>(Ln5/d;I[B)V

    const/4 p0, 0x0

    filled-new-array {p0}, [I

    move-result-object v2

    filled-new-array {p0}, [I

    move-result-object v4

    filled-new-array {p0}, [I

    move-result-object v5

    :goto_0
    aget v6, v2, p0

    if-ge v6, v0, :cond_3

    invoke-virtual {v3, v4, v5, v2}, Ln5/c;->a([I[I[I)B

    move-result v6

    and-int/lit16 v7, v6, 0xff

    shr-int/lit8 v8, v7, 0x4

    const/16 v9, 0x80

    const-string v10, "malformed input around byte "

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {v3, v4, v5, v2}, Ln5/c;->a([I[I[I)B

    move-result v7

    invoke-virtual {v3, v4, v5, v2}, Ln5/c;->a([I[I[I)B

    move-result v8

    and-int/lit16 v11, v7, 0xc0

    if-ne v11, v9, :cond_1

    and-int/lit16 v11, v8, 0xc0

    if-ne v11, v9, :cond_1

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0xc

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    and-int/lit8 v7, v8, 0x3f

    or-int/2addr v6, v7

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p0, v2, p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-virtual {v3, v4, v5, v2}, Ln5/c;->a([I[I[I)B

    move-result v7

    and-int/lit16 v8, v7, 0xc0

    if-ne v8, v9, :cond_2

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    int-to-char v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
