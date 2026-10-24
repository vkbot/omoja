.class public final Ln/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final c:Ljava/security/MessageDigest;

.field public final r:Lg0/d$a;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg0/d$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln/j$b;->r:Lg0/d$a;

    iput-object p1, p0, Ln/j$b;->c:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final b()Lg0/d$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Ln/j$b;->r:Lg0/d$a;

    return-object p0
.end method
