.class public final Le0/a1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Le0/a1;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Le0/a1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/text/Editable;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final b(Landroid/text/Editable;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final c(Landroid/text/Editable;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final d(Landroid/text/Editable;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final e(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    return-void
.end method

.method private final f(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    return-void
.end method

.method private final g(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    return-void
.end method

.method private final h(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    return-void
.end method

.method private final i(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    return-void
.end method

.method private final j(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    .line 1
    iget p1, p0, Le0/a1;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_4e

    .line 4
    .line 5
    .line 6
    :pswitch_5
    return-void

    .line 7
    :pswitch_6
    iget-object p1, p0, Le0/a1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/example/navistart/MainActivity;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/example/navistart/MainActivity;->Q0:Lcom/google/android/material/textfield/TextInputLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, ""

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_33

    .line 32
    .line 33
    iget-object p1, p1, Lcom/example/navistart/MainActivity;->Q0:Lcom/google/android/material/textfield/TextInputLayout;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    const/4 p1, 0x0

    .line 53
    :goto_34
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/16 v1, 0x10

    .line 58
    .line 59
    new-array v1, v1, [B

    .line 60
    .line 61
    fill-array-data v1, :array_5a

    .line 62
    .line 63
    .line 64
    const/16 v2, 0x8

    .line 65
    .line 66
    new-array v2, v2, [B

    .line 67
    .line 68
    fill-array-data v2, :array_66

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1, p1}, Lu0/a;->saveInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_5a
    .array-data 1
        0x50t
        0x6bt
        -0x47t
        0x3ft
        0xet
        0x23t
        0x6ct
        0x6dt
        0x65t
        0x6ft
        -0x51t
        0x2t
        0x20t
        0x21t
        0x4at
        0x78t
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_66
    .array-data 1
        0x0t
        0xat
        -0x35t
        0x54t
        0x41t
        0x4dt
        0x3ft
        0x1dt
    .end array-data
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    iget p1, p0, Le0/a1;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    iget p2, p0, Le0/a1;->b:I

    .line 2
    .line 3
    iget-object p3, p0, Le0/a1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_3e

    .line 6
    .line 7
    .line 8
    check-cast p3, Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    check-cast p3, Lw0/o0;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p3, Lw0/o0;->a:Ljava/lang/String;

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_16
    check-cast p3, Lm0/n3;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p3, Lm0/n3;->l:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p3}, Lm0/n3;->u()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_2c
    check-cast p3, Lm0/v;

    .line 46
    .line 47
    if-nez p1, :cond_33

    .line 48
    .line 49
    const-string p1, ""

    .line 50
    .line 51
    goto :goto_37

    .line 52
    :cond_33
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_37
    sget-object p2, Lm0/v;->h:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p3, p1}, Lm0/v;->v(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :pswitch_3c
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_2c
        :pswitch_16
        :pswitch_d
    .end packed-switch
.end method
