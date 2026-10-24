.class public final Landroidx/emoji2/text/g;
.super Landroidx/appcompat/view/menu/i;
.source "SourceFile"


# instance fields
.field public volatile d:Landroidx/emoji2/text/v;

.field public volatile e:Landroidx/emoji2/text/e0;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/m;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroidx/appcompat/view/menu/i;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final w(Ljava/lang/CharSequence;IIZ)Ljava/lang/CharSequence;
    .locals 16

    move-object/from16 v1, p1

    move/from16 v0, p2

    move/from16 v2, p3

    move-object/from16 v3, p0

    iget-object v4, v3, Landroidx/emoji2/text/g;->d:Landroidx/emoji2/text/v;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v1, Landroidx/emoji2/text/g0;

    if-eqz v5, :cond_0

    move-object v6, v1

    check-cast v6, Landroidx/emoji2/text/g0;

    invoke-virtual {v6}, Landroidx/emoji2/text/g0;->a()V

    :cond_0
    const-class v6, Landroidx/emoji2/text/w;

    if-nez v5, :cond_3

    :try_start_0
    instance-of v7, v1, Landroid/text/Spannable;

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_2

    move-object v7, v1

    check-cast v7, Landroid/text/Spanned;

    add-int/lit8 v8, v0, -0x1

    add-int/lit8 v9, v2, 0x1

    invoke-interface {v7, v8, v9, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v7

    if-gt v7, v2, :cond_2

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move-object v7, v1

    check-cast v7, Landroid/text/Spannable;

    :goto_1
    const/4 v8, 0x0

    if-eqz v7, :cond_5

    invoke-interface {v7, v0, v2, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/emoji2/text/w;

    if-eqz v6, :cond_5

    array-length v9, v6

    if-lez v9, :cond_5

    array-length v9, v6

    move v10, v8

    :goto_2
    if-ge v10, v9, :cond_5

    aget-object v11, v6, v10

    invoke-interface {v7, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v7, v11}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    if-eq v12, v2, :cond_4

    invoke-interface {v7, v11}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_4
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    if-eq v0, v2, :cond_17

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt v0, v6, :cond_6

    goto/16 :goto_5

    :cond_6
    new-instance v6, Landroidx/emoji2/text/u;

    iget-object v9, v4, Landroidx/emoji2/text/v;->b:Landroidx/emoji2/text/e0;

    iget-object v9, v9, Landroidx/emoji2/text/e0;->c:Landroidx/emoji2/text/d0;

    invoke-direct {v6, v9}, Landroidx/emoji2/text/u;-><init>(Landroidx/emoji2/text/d0;)V

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    move v10, v8

    :goto_3
    move v11, v9

    move v9, v0

    :cond_7
    :goto_4
    const/16 v12, 0x21

    const/4 v13, 0x1

    const v14, 0x7fffffff

    const/4 v15, 0x2

    if-ge v0, v2, :cond_f

    if-ge v10, v14, :cond_f

    invoke-virtual {v6, v11}, Landroidx/emoji2/text/u;->a(I)I

    move-result v14

    if-eq v14, v13, :cond_d

    if-eq v14, v15, :cond_c

    const/4 v13, 0x3

    if-eq v14, v13, :cond_8

    goto :goto_4

    :cond_8
    if-nez p4, :cond_9

    iget-object v13, v6, Landroidx/emoji2/text/u;->d:Landroidx/emoji2/text/d0;

    iget-object v13, v13, Landroidx/emoji2/text/d0;->b:Landroidx/emoji2/text/s;

    invoke-virtual {v4, v1, v9, v0, v13}, Landroidx/emoji2/text/v;->b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/s;)Z

    move-result v13

    if-nez v13, :cond_b

    :cond_9
    if-nez v7, :cond_a

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v13, v6, Landroidx/emoji2/text/u;->d:Landroidx/emoji2/text/d0;

    iget-object v13, v13, Landroidx/emoji2/text/d0;->b:Landroidx/emoji2/text/s;

    iget-object v14, v4, Landroidx/emoji2/text/v;->a:Landroidx/emoji2/text/l;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Landroidx/emoji2/text/h0;

    invoke-direct {v14, v13}, Landroidx/emoji2/text/h0;-><init>(Landroidx/emoji2/text/s;)V

    invoke-interface {v7, v14, v9, v0, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v10, v10, 0x1

    :cond_b
    move v9, v11

    goto :goto_3

    :cond_c
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v0, v12

    if-ge v0, v2, :cond_7

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v11

    goto :goto_4

    :cond_d
    invoke-static {v1, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v9, v0

    if-ge v9, v2, :cond_e

    invoke-static {v1, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v11

    :cond_e
    move v0, v9

    goto :goto_4

    :cond_f
    iget v2, v6, Landroidx/emoji2/text/u;->a:I

    if-ne v2, v15, :cond_11

    iget-object v2, v6, Landroidx/emoji2/text/u;->c:Landroidx/emoji2/text/d0;

    iget-object v2, v2, Landroidx/emoji2/text/d0;->b:Landroidx/emoji2/text/s;

    if-eqz v2, :cond_11

    iget v2, v6, Landroidx/emoji2/text/u;->f:I

    if-gt v2, v13, :cond_10

    invoke-virtual {v6}, Landroidx/emoji2/text/u;->c()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    move v8, v13

    :cond_11
    if-eqz v8, :cond_14

    if-ge v10, v14, :cond_14

    if-nez p4, :cond_12

    iget-object v2, v6, Landroidx/emoji2/text/u;->c:Landroidx/emoji2/text/d0;

    iget-object v2, v2, Landroidx/emoji2/text/d0;->b:Landroidx/emoji2/text/s;

    invoke-virtual {v4, v1, v9, v0, v2}, Landroidx/emoji2/text/v;->b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/s;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    if-nez v7, :cond_13

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v7, v2

    :cond_13
    iget-object v2, v6, Landroidx/emoji2/text/u;->c:Landroidx/emoji2/text/d0;

    iget-object v2, v2, Landroidx/emoji2/text/d0;->b:Landroidx/emoji2/text/s;

    iget-object v4, v4, Landroidx/emoji2/text/v;->a:Landroidx/emoji2/text/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/emoji2/text/h0;

    invoke-direct {v4, v2}, Landroidx/emoji2/text/h0;-><init>(Landroidx/emoji2/text/s;)V

    invoke-interface {v7, v4, v9, v0, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_14
    if-nez v7, :cond_15

    move-object v7, v1

    :cond_15
    if-eqz v5, :cond_16

    move-object v0, v1

    check-cast v0, Landroidx/emoji2/text/g0;

    invoke-virtual {v0}, Landroidx/emoji2/text/g0;->b()V

    :cond_16
    move-object v1, v7

    goto :goto_6

    :cond_17
    :goto_5
    if-eqz v5, :cond_18

    move-object v0, v1

    check-cast v0, Landroidx/emoji2/text/g0;

    invoke-virtual {v0}, Landroidx/emoji2/text/g0;->b()V

    :cond_18
    :goto_6
    return-object v1

    :catchall_0
    move-exception v0

    if-eqz v5, :cond_19

    check-cast v1, Landroidx/emoji2/text/g0;

    invoke-virtual {v1}, Landroidx/emoji2/text/g0;->b()V

    :cond_19
    throw v0
.end method

.method public final x(Landroid/view/inputmethod/EditorInfo;)V
    .locals 5

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/emoji2/text/g;->e:Landroidx/emoji2/text/e0;

    iget-object v1, v1, Landroidx/emoji2/text/e0;->a:Lm0/b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lm0/c;->a(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, v1, Lm0/c;->b:Ljava/nio/ByteBuffer;

    iget v1, v1, Lm0/c;->a:I

    add-int/2addr v2, v1

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v2, "android.support.text.emoji.emojiCompat_metadataVersion"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.support.text.emoji.emojiCompat_replaceAll"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
