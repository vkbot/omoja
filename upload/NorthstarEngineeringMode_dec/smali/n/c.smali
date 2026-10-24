.class public Ln/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln/c$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ln/c$a;


# direct methods
.method public constructor <init>(Ln/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xfa00000

    iput-wide v0, p0, Ln/c;->a:J

    iput-object p1, p0, Ln/c;->b:Ln/c$a;

    return-void
.end method
