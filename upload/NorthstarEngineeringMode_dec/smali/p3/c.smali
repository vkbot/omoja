.class public abstract Lp3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/c$a;
    }
.end annotation


# static fields
.field public static final c:Lp3/c$a;

.field public static final r:Lp3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp3/c$a;

    invoke-direct {v0}, Lp3/c;-><init>()V

    sput-object v0, Lp3/c;->c:Lp3/c$a;

    sget-object v0, Lk3/b;->a:Lk3/a;

    invoke-virtual {v0}, Lk3/a;->b()Lp3/c;

    move-result-object v0

    sput-object v0, Lp3/c;->r:Lp3/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method
