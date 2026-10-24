.class public Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;
.super Ljava/lang/Object;
.source "RomPackageConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/RomPackageConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "conditionSystem"
.end annotation


# instance fields
.field public sysPropKey:Ljava/lang/String;

.field public sysPropValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sysPropKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;->sysPropKey:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;->sysPropValue:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;->sysPropKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;->sysPropValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conditionSystem{propKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;->sysPropKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;->sysPropValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
