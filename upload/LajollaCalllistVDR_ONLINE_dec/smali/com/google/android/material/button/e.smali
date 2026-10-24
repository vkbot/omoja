.class public final Lcom/google/android/material/button/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lg2/a;


# instance fields
.field public final a:Lg2/c;

.field public final b:Lg2/c;

.field public final c:Lg2/c;

.field public final d:Lg2/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg2/a;-><init>(F)V

    sput-object v0, Lcom/google/android/material/button/e;->e:Lg2/a;

    return-void
.end method

.method public constructor <init>(Lg2/c;Lg2/c;Lg2/c;Lg2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/e;->a:Lg2/c;

    iput-object p3, p0, Lcom/google/android/material/button/e;->b:Lg2/c;

    iput-object p4, p0, Lcom/google/android/material/button/e;->c:Lg2/c;

    iput-object p2, p0, Lcom/google/android/material/button/e;->d:Lg2/c;

    return-void
.end method
