.class Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$1;
.super Ljava/lang/Object;
.source "AutoReplacementSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$1;->this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$1;->this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    #getter for: Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->access$000(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment$1;->this$0:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    #calls: Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->createLanguageList(Z)V
    invoke-static {v1, p2}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->access$100(Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;Z)V

    return-void
.end method
