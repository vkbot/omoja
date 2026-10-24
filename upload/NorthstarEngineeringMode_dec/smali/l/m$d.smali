.class public final Ll/m$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Ll/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/n<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lb0/g;

.field public final synthetic c:Ll/m;


# direct methods
.method public constructor <init>(Ll/m;Lb0/g;Ll/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb0/g;",
            "Ll/n<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/m$d;->c:Ll/m;

    iput-object p2, p0, Ll/m$d;->b:Lb0/g;

    iput-object p3, p0, Ll/m$d;->a:Ll/n;

    return-void
.end method
