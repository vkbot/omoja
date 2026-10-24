.class public Lk5/l;
.super Lk5/h;
.source "SourceFile"


# static fields
.field public static final k1:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lk5/i;

    const-string v2, "\\c+"

    invoke-direct {v1, v2}, Lk5/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/j;

    const-string v2, "\\i\\c*"

    invoke-direct {v1, v2}, Lk5/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/k;

    const-string v2, "[\\i-[:]][\\c-[:]]*"

    invoke-direct {v1, v2}, Lk5/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lk5/l;->k1:Ljava/util/HashMap;

    return-void
.end method
