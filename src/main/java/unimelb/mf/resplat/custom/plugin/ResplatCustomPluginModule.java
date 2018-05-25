package unimelb.mf.resplat.custom.plugin;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import arc.mf.plugin.ConfigurationResolver;
import arc.mf.plugin.PluginModule;
import arc.mf.plugin.PluginService;
import unimelb.mf.resplat.custom.plugin.services.SvcTest;

public class ResplatCustomPluginModule implements PluginModule {

    private List<PluginService> _services;

    public ResplatCustomPluginModule() {
        _services = new ArrayList<PluginService>();
        _services.add(new SvcTest());
    }

    public String description() {
        return "Resplat Custom Plugin Module";
    }

    public void initialize(ConfigurationResolver conf) throws Throwable {

    }

    public Collection<PluginService> services() {
        return _services;
    }

    public void shutdown(ConfigurationResolver arg0) throws Throwable {

    }

    public String vendor() {
        return "Research Platform Services, Infrastructure Services, University Services, The University of Melbourne";
    }

    public String version() {
        return "0.0.1";
    }

}
