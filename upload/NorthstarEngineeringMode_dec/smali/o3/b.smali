.class public abstract Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/b$a;
    }
.end annotation


# instance fields
.field public final Z:Ljava/lang/String;

.field public final b1:Z

.field public transient c:Ls3/a;

.field public final r:Ljava/lang/Object;

.field public final x:Ljava/lang/Class;

.field public final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/b;->r:Ljava/lang/Object;

    iput-object p2, p0, Lo3/b;->x:Ljava/lang/Class;

    iput-object p3, p0, Lo3/b;->y:Ljava/lang/String;

    iput-object p4, p0, Lo3/b;->Z:Ljava/lang/String;

    iput-boolean p5, p0, Lo3/b;->b1:Z

    return-void
.end method


# virtual methods
.method public abstract b()Lo3/k;
.end method

.method public final c()Lo3/c;
    .locals 1

    iget-object v0, p0, Lo3/b;->x:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lo3/b;->b1:Z

    if-eqz p0, :cond_1

    sget-object p0, Lo3/n;->a:Lo3/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lo3/j;

    invoke-direct {p0, v0}, Lo3/j;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lo3/n;->a:Lo3/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lo3/d;

    invoke-direct {p0, v0}, Lo3/d;-><init>(Ljava/lang/Class;)V

    :goto_0
    return-object p0
.end method
