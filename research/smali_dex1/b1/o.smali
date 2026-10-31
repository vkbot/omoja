.class public final synthetic Lb1/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lb1/r;


# direct methods
.method public synthetic constructor <init>(Lb1/r;I)V
    .registers 3

    .line 1
    iput p2, p0, Lb1/o;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lb1/o;->c:Lb1/r;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget v0, p0, Lb1/o;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lb1/o;->c:Lb1/r;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_56

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lb1/r;->d(Lb1/r;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :try_start_e
    iget-object v0, v1, Lb1/r;->c:Landroid/webkit/WebView;

    .line 16
    .line 17
    if-eqz v0, :cond_55

    .line 18
    .line 19
    const/16 v2, 0xb

    .line 20
    .line 21
    new-array v2, v2, [B

    .line 22
    .line 23
    fill-array-data v2, :array_5c

    .line 24
    .line 25
    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    new-array v3, v3, [B

    .line 29
    .line 30
    fill-array-data v3, :array_66

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v1, Lb1/r;->c:Landroid/webkit/WebView;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 43
    .line 44
    .line 45
    iget-object v0, v1, Lb1/r;->c:Landroid/webkit/WebView;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 48
    .line 49
    .line 50
    iget-object v0, v1, Lb1/r;->c:Landroid/webkit/WebView;

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v1, Lb1/r;->c:Landroid/webkit/WebView;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 59
    .line 60
    .line 61
    iget-object v0, v1, Lb1/r;->c:Landroid/webkit/WebView;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 68
    .line 69
    if-eqz v2, :cond_4d

    .line 70
    .line 71
    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    .line 73
    iget-object v2, v1, Lb1/r;->c:Landroid/webkit/WebView;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    :cond_4d
    iget-object v0, v1, Lb1/r;->c:Landroid/webkit/WebView;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    iput-object v0, v1, Lb1/r;->c:Landroid/webkit/WebView;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_55} :catch_55

    .line 85
    .line 86
    :catch_55
    :cond_55
    return-void

    .line 87
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_5c
    .array-data 1
        -0x43t
        0x29t
        0x69t
        0x18t
        -0x6ft
        0x29t
        0x7bt
        -0x43t
        -0x43t
        0x25t
        0x6dt
    .end array-data

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
        -0x24t
        0x4bt
        0x6t
        0x6dt
        -0x1bt
        0x13t
        0x19t
        -0x2ft
    .end array-data
.end method
