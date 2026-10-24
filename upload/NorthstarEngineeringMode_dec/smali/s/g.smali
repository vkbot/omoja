.class public abstract Ls/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls/g$g;,
        Ls/g$c;,
        Ls/g$f;,
        Ls/g$b;,
        Ls/g$a;,
        Ls/g$d;,
        Ls/g$e;
    }
.end annotation


# static fields
.field public static final a:Ls/g$e;

.field public static final b:Ls/g$f;

.field public static final c:Ls/g$d;

.field public static final d:Li/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/g<",
            "Ls/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls/g$a;

    invoke-direct {v0}, Ls/g;-><init>()V

    new-instance v0, Ls/g$b;

    invoke-direct {v0}, Ls/g;-><init>()V

    new-instance v0, Ls/g$e;

    invoke-direct {v0}, Ls/g;-><init>()V

    sput-object v0, Ls/g;->a:Ls/g$e;

    new-instance v0, Ls/g$c;

    invoke-direct {v0}, Ls/g;-><init>()V

    new-instance v0, Ls/g$d;

    invoke-direct {v0}, Ls/g;-><init>()V

    new-instance v1, Ls/g$f;

    invoke-direct {v1}, Ls/g;-><init>()V

    sput-object v1, Ls/g;->b:Ls/g$f;

    sput-object v0, Ls/g;->c:Ls/g$d;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    invoke-static {v0, v1}, Li/g;->a(Ljava/lang/Object;Ljava/lang/String;)Li/g;

    move-result-object v0

    sput-object v0, Ls/g;->d:Li/g;

    const/4 v0, 0x1

    sput-boolean v0, Ls/g;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)Ls/g$g;
.end method

.method public abstract b(IIII)F
.end method
