.class public final Lcom/google/android/material/button/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ly1/a;


# instance fields
.field public final a:Ly1/c;

.field public final b:Ly1/c;

.field public final c:Ly1/c;

.field public final d:Ly1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly1/a;-><init>(F)V

    sput-object v0, Lcom/google/android/material/button/e;->e:Ly1/a;

    return-void
.end method

.method public constructor <init>(Ly1/c;Ly1/c;Ly1/c;Ly1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/e;->a:Ly1/c;

    iput-object p3, p0, Lcom/google/android/material/button/e;->b:Ly1/c;

    iput-object p4, p0, Lcom/google/android/material/button/e;->c:Ly1/c;

    iput-object p2, p0, Lcom/google/android/material/button/e;->d:Ly1/c;

    return-void
.end method
