.class public Lcom/example/navistart/SpeedBoard/PPSView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lv0/h;


# instance fields
.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/view/View;

.field public e:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

.field public f:Landroid/widget/RelativeLayout;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/FrameLayout;

.field public o:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/example/navistart/SpeedBoard/PPSView;->k(ILandroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic g(Lcom/example/navistart/SpeedBoard/PPSView;Lcom/example/navistart/cores/HUDMassageObj;)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/example/navistart/SpeedBoard/PPSView;->setCameraInfoViewVis(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/example/navistart/cores/HUDMassageObj;->getSpeedlimit()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-lez v0, :cond_16

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/example/navistart/cores/HUDMassageObj;->getSpeedlimit()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_24

    .line 23
    :cond_16
    new-array v0, v2, [B

    .line 24
    .line 25
    fill-array-data v0, :array_44

    .line 26
    .line 27
    .line 28
    new-array v3, v1, [B

    .line 29
    .line 30
    fill-array-data v3, :array_4a

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_24
    invoke-direct {p0, v0}, Lcom/example/navistart/SpeedBoard/PPSView;->setCamspeedLimitText(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget p1, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    new-array p1, v2, [B

    .line 51
    .line 52
    fill-array-data p1, :array_52

    .line 53
    .line 54
    .line 55
    new-array v1, v1, [B

    .line 56
    .line 57
    fill-array-data v1, :array_58

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Lcom/example/navistart/SpeedBoard/PPSView;->setcameraDis(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :array_44
    .array-data 1
        0x22t
        -0x35t
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    nop

    .line 75
    :array_4a
    .array-data 1
        0xft
        -0x1at
        -0x40t
        -0x70t
        -0x21t
        0x21t
        0x32t
        -0x57t
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_52
    .array-data 1
        0x6et
        -0x42t
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    nop

    .line 89
    :array_58
    .array-data 1
        0x4et
        -0x2dt
        -0x19t
        -0x3dt
        -0x55t
        -0x66t
        0x30t
        0x7ct
    .end array-data
.end method

.method public static synthetic h(Lcom/example/navistart/SpeedBoard/PPSView;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/example/navistart/SpeedBoard/PPSView;->setTextSpeedWidg(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static i(Lcom/example/navistart/SpeedBoard/PPSView;Lcom/example/navistart/cores/HUDMassageObj;)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/example/navistart/SpeedBoard/PPSView;->setRastVis(Z)V

    .line 3
    .line 4
    .line 5
    iget v0, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/example/navistart/SpeedBoard/PPSView;->setMan_img_view(I)V

    .line 8
    .line 9
    .line 10
    iget v0, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 11
    .line 12
    iget v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 13
    .line 14
    iget-object v2, p0, Lcom/example/navistart/SpeedBoard/PPSView;->h:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/example/navistart/SpeedBoard/PPSView;->l(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->g:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/example/navistart/SpeedBoard/PPSView;->l(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/example/navistart/cores/HUDMassageObj;->getSpeedlimit()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lez v0, :cond_31

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/example/navistart/cores/HUDMassageObj;->getSpeedlimit()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lcom/example/navistart/SpeedBoard/PPSView;->setSpeedLimitText(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_31
    const-string p1, ""

    .line 51
    .line 52
    invoke-direct {p0, p1}, Lcom/example/navistart/SpeedBoard/PPSView;->setSpeedLimitText(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->f:Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    const/4 p1, 0x4

    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public static j(Lcom/example/navistart/SpeedBoard/PPSView;Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->NAVI:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne p1, v0, :cond_13

    .line 7
    .line 8
    invoke-direct {p0, v2}, Lcom/example/navistart/SpeedBoard/PPSView;->setRastVis(Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/example/navistart/SpeedBoard/PPSView;->setSpeedLimitText(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->f:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_13
    sget-object v0, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->ARAD:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 21
    .line 22
    if-ne p1, v0, :cond_20

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lcom/example/navistart/SpeedBoard/PPSView;->setCameraInfoViewVis(Z)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v1}, Lcom/example/navistart/SpeedBoard/PPSView;->setCamspeedLimitText(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v1}, Lcom/example/navistart/SpeedBoard/PPSView;->setcameraDis(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_20
    return-void
.end method

.method public static l(I)Ljava/lang/String;
    .registers 7

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-lt p0, v0, :cond_2b

    .line 6
    .line 7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    const/4 v2, 0x7

    .line 10
    new-array v2, v2, [B

    .line 11
    .line 12
    fill-array-data v2, :array_44

    .line 13
    .line 14
    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    fill-array-data v1, :array_4c

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    int-to-double v2, p0

    .line 25
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    div-double/2addr v2, v4

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x2

    .line 53
    new-array p0, p0, [B

    .line 54
    .line 55
    fill-array-data p0, :array_54

    .line 56
    .line 57
    .line 58
    new-array v1, v1, [B

    .line 59
    .line 60
    fill-array-data v1, :array_5a

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v1, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    nop

    .line 69
    :array_44
    .array-data 1
        0x34t
        0x4dt
        0x41t
        0x3ct
        0x73t
        -0x58t
        -0x1bt
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_4c
    .array-data 1
        0x11t
        0x63t
        0x70t
        0x5at
        0x53t
        -0x3dt
        -0x78t
        0x3ct
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :array_54
    .array-data 1
        -0x75t
        0x23t
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    nop

    .line 91
    :array_5a
    .array-data 1
        -0x55t
        0x4et
        0x56t
        -0x57t
        -0x3et
        0x4ft
        0x7ct
        0x66t
    .end array-data
.end method

.method public static m(Landroid/view/View;Z)V
    .registers 6

    .line 1
    const-wide/16 v0, 0x320

    .line 2
    .line 3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz p1, :cond_24

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_40

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_24
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_40

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x4

    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 63
    .line 64
    .line 65
    :cond_40
    return-void
.end method

.method private setCamspeedLimitText(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setMan_img_view(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    sget-object v1, Lk0/a;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v1, 0xf

    .line 6
    .line 7
    if-eq p1, v1, :cond_47

    .line 8
    .line 9
    const/16 v1, 0x13

    .line 10
    .line 11
    if-eq p1, v1, :cond_43

    .line 12
    .line 13
    const/16 v1, 0x18

    .line 14
    .line 15
    if-eq p1, v1, :cond_3f

    .line 16
    .line 17
    const/16 v1, 0x31

    .line 18
    .line 19
    if-eq p1, v1, :cond_3b

    .line 20
    .line 21
    packed-switch p1, :pswitch_data_4e

    .line 22
    .line 23
    .line 24
    const p1, 0x7f0701fe

    .line 25
    .line 26
    .line 27
    goto :goto_4a

    .line 28
    :pswitch_1b
    const p1, 0x7f070204

    .line 29
    .line 30
    .line 31
    goto :goto_4a

    .line 32
    :pswitch_1f
    const p1, 0x7f070208

    .line 33
    .line 34
    .line 35
    goto :goto_4a

    .line 36
    :pswitch_23
    const p1, 0x7f0701fb

    .line 37
    .line 38
    .line 39
    goto :goto_4a

    .line 40
    :pswitch_27
    const p1, 0x7f0701fa

    .line 41
    .line 42
    .line 43
    goto :goto_4a

    .line 44
    :pswitch_2b
    const p1, 0x7f0701f9

    .line 45
    .line 46
    .line 47
    goto :goto_4a

    .line 48
    :pswitch_2f
    const p1, 0x7f0701f8

    .line 49
    .line 50
    .line 51
    goto :goto_4a

    .line 52
    :pswitch_33
    const p1, 0x7f070201

    .line 53
    .line 54
    .line 55
    goto :goto_4a

    .line 56
    :pswitch_37
    const p1, 0x7f0701ff

    .line 57
    .line 58
    .line 59
    goto :goto_4a

    .line 60
    :cond_3b
    const p1, 0x7f0701f3

    .line 61
    .line 62
    .line 63
    goto :goto_4a

    .line 64
    :cond_3f
    const p1, 0x7f0701f4

    .line 65
    .line 66
    .line 67
    goto :goto_4a

    .line 68
    :cond_43
    const p1, 0x7f070209

    .line 69
    .line 70
    .line 71
    goto :goto_4a

    .line 72
    :cond_47
    const p1, 0x7f0701f7

    .line 73
    .line 74
    .line 75
    :goto_4a
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
    .end packed-switch
.end method

.method private setRastVis(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/example/navistart/SpeedBoard/PPSView;->m(Landroid/view/View;Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->h:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/example/navistart/SpeedBoard/PPSView;->m(Landroid/view/View;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->g:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/example/navistart/SpeedBoard/PPSView;->m(Landroid/view/View;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private setSpeedLimitText(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->f:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->i:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setTextSpeedWidg(I)V
    .registers 9

    .line 1
    iget-object v4, p0, Lcom/example/navistart/SpeedBoard/PPSView;->l:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v5, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v5, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    sub-int v1, p1, v0

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_27

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_27
    const/16 v3, 0x1f4

    .line 41
    .line 42
    div-int v6, v3, v2

    .line 43
    .line 44
    if-lez v1, :cond_30

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    :goto_2e
    move v2, v1

    .line 48
    goto :goto_32

    .line 49
    :cond_30
    const/4 v1, -0x1

    .line 50
    goto :goto_2e

    .line 51
    :goto_32
    filled-new-array {v0}, [I

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v0, Lv0/c;

    .line 56
    .line 57
    move v3, p1

    .line 58
    invoke-direct/range {v0 .. v6}, Lv0/c;-><init>([IIILandroid/widget/TextView;Landroid/os/Handler;I)V

    .line 59
    .line 60
    .line 61
    int-to-long v1, v6

    .line 62
    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private setcameraDis(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()V
    .registers 2

    .line 1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/example/navistart/cores/CarCmdProxy;->getSpeed()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/example/navistart/SpeedBoard/PPSView;->setSpeed(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final d()I
    .registers 2

    .line 1
    const/16 v0, 0x190

    .line 2
    .line 3
    return v0
.end method

.method public final e(F)V
    .registers 2

    .line 1
    return-void
.end method

.method public getLayParams()Landroid/view/WindowManager$LayoutParams;
    .registers 7

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1a

    .line 6
    .line 7
    if-lt v1, v2, :cond_c

    .line 8
    .line 9
    const/16 v1, 0x7f6

    .line 10
    .line 11
    :goto_a
    move v3, v1

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    const/16 v1, 0x7d2

    .line 14
    .line 15
    goto :goto_a

    .line 16
    :goto_f
    const/16 v4, 0x308

    .line 17
    .line 18
    const/4 v5, -0x3

    .line 19
    const/4 v1, -0x2

    .line 20
    const/4 v2, -0x2

    .line 21
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x51

    .line 25
    .line 26
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 30
    .line 31
    const/16 v1, 0x1e

    .line 32
    .line 33
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 34
    .line 35
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    .line 1
    return-object p0
.end method

.method public final k(ILandroid/content/Context;)V
    .registers 3

    .line 1
    if-nez p1, :cond_9

    .line 2
    .line 3
    const p1, 0x7f0c00ff

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    goto :goto_c

    .line 10
    :cond_9
    invoke-static {p2, p1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    :goto_c
    const p1, 0x7f0905d3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->d:Landroid/view/View;

    .line 21
    .line 22
    const p1, 0x7f09055a

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->m:Landroid/widget/TextView;

    .line 32
    .line 33
    const p1, 0x7f090256

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/widget/ImageView;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->c:Landroid/widget/ImageView;

    .line 43
    .line 44
    const p1, 0x7f0902bb

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->b:Landroid/widget/ImageView;

    .line 54
    .line 55
    const p1, 0x7f09024d

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->e:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 65
    .line 66
    const p1, 0x7f090467

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 74
    .line 75
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->f:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    const p1, 0x7f0903d1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->g:Landroid/widget/TextView;

    .line 87
    .line 88
    const p1, 0x7f0903d0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Landroid/widget/TextView;

    .line 96
    .line 97
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->h:Landroid/widget/TextView;

    .line 98
    .line 99
    const p1, 0x7f090468

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/widget/TextView;

    .line 107
    .line 108
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->i:Landroid/widget/TextView;

    .line 109
    .line 110
    const p1, 0x7f090015

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Landroid/widget/TextView;

    .line 118
    .line 119
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->j:Landroid/widget/TextView;

    .line 120
    .line 121
    const p1, 0x7f090157

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Landroid/widget/TextView;

    .line 129
    .line 130
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->k:Landroid/widget/TextView;

    .line 131
    .line 132
    const p1, 0x7f090014

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Landroid/widget/FrameLayout;

    .line 140
    .line 141
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->n:Landroid/widget/FrameLayout;

    .line 142
    .line 143
    const p1, 0x7f0900de

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 151
    .line 152
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->o:Landroid/widget/RelativeLayout;

    .line 153
    .line 154
    const p1, 0x7f090572

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroid/widget/TextView;

    .line 162
    .line 163
    iput-object p1, p0, Lcom/example/navistart/SpeedBoard/PPSView;->l:Landroid/widget/TextView;

    .line 164
    .line 165
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->o:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setCameraInfoViewVis(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->n:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/example/navistart/SpeedBoard/PPSView;->m(Landroid/view/View;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHudMassageObj(Lcom/example/navistart/cores/HUDMassageObj;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 2
    .line 3
    sget-object v1, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->NAVI:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_37

    .line 6
    .line 7
    iget-object v0, p1, Lcom/example/navistart/cores/HUDMassageObj;->NaviOn:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_21

    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lv0/a;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, p1, v2}, Lv0/a;-><init>(Lcom/example/navistart/SpeedBoard/PPSView;Lcom/example/navistart/cores/HUDMassageObj;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    iget-object p1, p1, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 35
    .line 36
    new-instance v0, Landroid/os/Handler;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Ls1/x0;

    .line 46
    .line 47
    const/16 v2, 0x9

    .line 48
    .line 49
    invoke-direct {v1, v2, p0, p1}, Ls1/x0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_37
    sget-object v1, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->ARAD:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 57
    .line 58
    if-ne v0, v1, :cond_6b

    .line 59
    .line 60
    iget-object v0, p1, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_56

    .line 67
    .line 68
    new-instance v0, Landroid/os/Handler;

    .line 69
    .line 70
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lv0/a;

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    invoke-direct {v1, p0, p1, v2}, Lv0/a;-><init>(Lcom/example/navistart/SpeedBoard/PPSView;Lcom/example/navistart/cores/HUDMassageObj;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_56
    iget-object p1, p1, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 88
    .line 89
    new-instance v0, Landroid/os/Handler;

    .line 90
    .line 91
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    .line 97
    .line 98
    new-instance v1, Ls1/x0;

    .line 99
    .line 100
    const/16 v2, 0x9

    .line 101
    .line 102
    invoke-direct {v1, v2, p0, p1}, Ls1/x0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    :cond_6b
    return-void
.end method

.method public setRPM(I)V
    .registers 2

    .line 1
    return-void
.end method

.method public setSpeed(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->e:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 2
    .line 3
    if-eqz v0, :cond_16

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lv0/b;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p0, p1, v2}, Lv0/b;-><init>(Lcom/example/navistart/SpeedBoard/PPSView;II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_16
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->l:Landroid/widget/TextView;

    .line 24
    .line 25
    if-eqz v0, :cond_32

    .line 26
    .line 27
    if-ltz p1, :cond_32

    .line 28
    .line 29
    const/16 v0, 0x12c

    .line 30
    .line 31
    if-ge p1, v0, :cond_32

    .line 32
    .line 33
    new-instance v0, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lv0/b;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-direct {v1, p0, p1, v2}, Lv0/b;-><init>(Lcom/example/navistart/SpeedBoard/PPSView;II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_32
    return-void
.end method

.method public setTexColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->h:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/example/navistart/SpeedBoard/PPSView;->k:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
