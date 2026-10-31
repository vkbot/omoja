.class public final Ls0/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:Landroid/media/SoundPool;

.field public b:I

.field public final c:[I

.field public d:Z

.field public e:F

.field public f:I


# direct methods
.method public constructor <init>(Lcom/example/navistart/LocServ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x6

    .line 5
    new-array v0, p1, [I

    .line 6
    .line 7
    iput-object v0, p0, Ls0/c;->c:[I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Ls0/c;->d:Z

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    iput v0, p0, Ls0/c;->e:F

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput v0, p0, Ls0/c;->f:I

    .line 18
    .line 19
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Landroid/media/SoundPool$Builder;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Ls0/c;->a:Landroid/media/SoundPool;

    .line 55
    .line 56
    new-instance v0, Ls0/b;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Ls0/b;-><init>(Ls0/c;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
