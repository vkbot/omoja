.class public final Li0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Li0/a$b;->a:[I

    new-array v1, v0, [I

    iput-object v1, p0, Li0/a$b;->b:[I

    new-array v0, v0, [D

    iput-object v0, p0, Li0/a$b;->c:[D

    return-void
.end method
