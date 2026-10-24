.class public final Lf0/h;
.super Lf0/g;
.source "SourceFile"


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Ly1/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lf0/g;-><init>(Ljava/lang/Object;)V

    iput-boolean p2, p0, Lf0/h;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lf0/h;->b:Z

    return p0
.end method
