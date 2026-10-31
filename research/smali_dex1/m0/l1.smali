.class public Lm0/l1;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public c:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_12

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_20

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :array_12
    .array-data 1
        -0x2ct
        -0x49t
        0x28t
        -0x25t
        0x52t
        0x2t
        0x48t
        -0x6t
        -0x1ft
        -0x48t
        0x3ct
        -0x39t
        0x68t
        0x38t
        0x7et
        -0x36t
        -0x2at
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    nop

    .line 33
    :array_20
    .array-data 1
        -0x6dt
        -0x19t
        0x7bt
        -0x78t
        0x37t
        0x6ct
        0x2ct
        -0x61t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xb

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    fill-array-data v0, :array_1e

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    fill-array-data v1, :array_28

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/16 v1, 0x64

    .line 23
    .line 24
    invoke-static {v1, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lm0/l1;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 29
    .line 30
    return-void

    .line 31
    :array_1e
    .array-data 1
        -0x75t
        -0x65t
        -0x6ft
        -0x26t
        -0x24t
        0x44t
        0x78t
        0x79t
        -0x5dt
        -0x6ct
        -0x6bt
    .end array-data

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    :array_28
    .array-data 1
        -0x3at
        -0x6t
        -0x1ft
        -0x64t
        -0x52t
        0x25t
        0x1ft
        0x14t
    .end array-data
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .line 1
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3}, Lv1/d;->d()Lv1/c;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    iget-object p3, p3, Lv1/c;->g:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lm0/x0;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, p0, v2}, Lm0/x0;-><init>(Ll0/b;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    const p3, 0x7f0c005e

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const p2, 0x7f0905e3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Landroid/webkit/WebView;

    .line 40
    .line 41
    iput-object p2, p0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 54
    .line 55
    new-instance p3, Landroid/webkit/WebViewClient;

    .line 56
    .line 57
    invoke-direct {p3}, Landroid/webkit/WebViewClient;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 64
    .line 65
    new-instance p3, Lm0/k1;

    .line 66
    .line 67
    invoke-direct {p3, p0}, Lm0/k1;-><init>(Lm0/l1;)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x7

    .line 71
    new-array v0, v0, [B

    .line 72
    .line 73
    fill-array-data v0, :array_70

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x8

    .line 77
    .line 78
    new-array v2, v1, [B

    .line 79
    .line 80
    fill-array-data v2, :array_78

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p2, p3, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 91
    .line 92
    const/16 p3, 0x21

    .line 93
    .line 94
    new-array p3, p3, [B

    .line 95
    .line 96
    fill-array-data p3, :array_80

    .line 97
    .line 98
    .line 99
    new-array v0, v1, [B

    .line 100
    .line 101
    fill-array-data v0, :array_96

    .line 102
    .line 103
    .line 104
    invoke-static {p3, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    nop

    .line 113
    :array_70
    .array-data 1
        -0xft
        0x4bt
        -0x6at
        0x54t
        0xet
        -0x55t
        -0x42t
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_78
    .array-data 1
        -0x50t
        0x25t
        -0xet
        0x26t
        0x61t
        -0x3et
        -0x26t
        -0x31t
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_80
    .array-data 1
        0x74t
        -0xft
        -0x8t
        -0x24t
        -0x53t
        0x40t
        -0x5et
        -0x21t
        0x76t
        -0x1at
        -0x13t
        -0x22t
        -0x56t
        0x15t
        -0x1et
        -0x64t
        0x6ft
        -0x55t
        -0x2t
        -0x27t
        -0xft
        0x1dt
        -0x3t
        -0x7dt
        0x33t
        -0x18t
        -0x13t
        -0x24t
        -0x10t
        0x12t
        -0x7t
        -0x63t
        0x70t
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    nop

    .line 151
    :array_96
    .array-data 1
        0x1ct
        -0x7bt
        -0x74t
        -0x54t
        -0x22t
        0x7at
        -0x73t
        -0x10t
    .end array-data
.end method

.method public final onDestroyView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_47

    .line 4
    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_4c

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_56

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 54
    .line 55
    if-eqz v1, :cond_3f

    .line 56
    .line 57
    check-cast v0, Landroid/view/ViewGroup;

    .line 58
    .line 59
    iget-object v1, p0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    :cond_3f
    iget-object v0, p0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 71
    .line 72
    :cond_47
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    :array_4c
    .array-data 1
        0x2dt
        -0x19t
        -0x15t
        0x1bt
        -0x7dt
        -0x11t
        0x6ft
        0x5et
        0x2dt
        -0x15t
        -0x11t
    .end array-data

    :array_56
    .array-data 1
        0x4ct
        -0x7bt
        -0x7ct
        0x6et
        -0x9t
        -0x2bt
        0xdt
        0x32t
    .end array-data
.end method
