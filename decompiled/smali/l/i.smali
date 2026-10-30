.class public final Ll/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ld0/e;


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:Ld0/h;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld0/h;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ll/i;->c:Ld0/h;

    .line 10
    .line 11
    iput-object p1, p0, Ll/i;->b:Ljava/security/MessageDigest;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final c()Ld0/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/i;->c:Ld0/h;

    .line 2
    .line 3
    return-object v0
.end method
