.class public final Landroidx/emoji2/text/c0;
.super Landroidx/emoji2/text/s;
.source "SourceFile"


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 9

    move-object/from16 v7, p9

    invoke-static {}, Landroidx/emoji2/text/j;->a()Landroidx/emoji2/text/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v0, p7

    int-to-float v5, v0

    move-object v0, p0

    iget-object v0, v0, Landroidx/emoji2/text/s;->b:Landroidx/emoji2/text/o;

    iget-object v1, v0, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/z;

    iget-object v2, v1, Landroidx/emoji2/text/z;->d:Landroid/graphics/Typeface;

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, v0, Landroidx/emoji2/text/o;->a:I

    mul-int/lit8 v2, v0, 0x2

    iget-object v1, v1, Landroidx/emoji2/text/z;->b:[C

    const/4 v3, 0x2

    move-object v0, p1

    move v4, p5

    move-object/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
