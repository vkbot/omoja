.class public abstract Lf0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf0/h;

.field public static final b:Lf0/h;

.field public static final c:Lf0/h;

.field public static final d:Lf0/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lf0/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf0/h;-><init>(Ly1/e;Z)V

    sput-object v0, Lf0/i;->a:Lf0/h;

    new-instance v0, Lf0/h;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lf0/h;-><init>(Ly1/e;Z)V

    sput-object v0, Lf0/i;->b:Lf0/h;

    new-instance v0, Lf0/h;

    sget-object v1, Ly1/e;->b:Ly1/e;

    invoke-direct {v0, v1, v2}, Lf0/h;-><init>(Ly1/e;Z)V

    sput-object v0, Lf0/i;->c:Lf0/h;

    new-instance v0, Lf0/h;

    invoke-direct {v0, v1, v3}, Lf0/h;-><init>(Ly1/e;Z)V

    sput-object v0, Lf0/i;->d:Lf0/h;

    return-void
.end method
