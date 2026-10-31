.class public final synthetic Ls0/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field public final synthetic a:Ls0/c;


# direct methods
.method public synthetic constructor <init>(Ls0/c;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls0/b;->a:Ls0/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 4

    .line 1
    if-nez p3, :cond_7

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iget-object p2, p0, Ls0/b;->a:Ls0/c;

    .line 5
    .line 6
    iput-boolean p1, p2, Ls0/c;->d:Z

    .line 7
    .line 8
    :cond_7
    return-void
.end method
