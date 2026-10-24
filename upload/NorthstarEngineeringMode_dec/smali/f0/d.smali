.class public final Lf0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf0/d$a;

.field public static final b:Lf0/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf0/d$a;

    invoke-direct {v0}, Lf0/d$a;-><init>()V

    sput-object v0, Lf0/d;->a:Lf0/d$a;

    new-instance v0, Lf0/d$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf0/d;->b:Lf0/d$b;

    return-void
.end method
