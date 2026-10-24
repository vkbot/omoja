.class public final Ly3/l;
.super Lv3/w;
.source "SourceFile"


# static fields
.field public static final x:Ly3/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly3/l;

    invoke-direct {v0}, Lv3/w;-><init>()V

    sput-object v0, Ly3/l;->x:Ly3/l;

    return-void
.end method


# virtual methods
.method public final l(Lh3/f;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, Ly3/c;->y:Ly3/c;

    sget-object p1, Ly3/k;->h:Ly3/i;

    iget-object p0, p0, Ly3/f;->x:Ly3/a;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Ly3/a;->b(Ljava/lang/Runnable;Ly3/h;Z)V

    return-void
.end method
