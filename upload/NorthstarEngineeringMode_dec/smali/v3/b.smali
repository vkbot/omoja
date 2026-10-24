.class public final Lv3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/h1;


# static fields
.field public static final c:Lv3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv3/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv3/b;->c:Lv3/b;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Active"

    return-object p0
.end method
