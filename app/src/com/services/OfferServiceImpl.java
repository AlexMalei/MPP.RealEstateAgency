package com.services;

import com.dao.OfferDAO;
import com.dao.OfferDAOImpl;
import com.dao.PropertyDAO;
import com.dao.PropertyDAOImpl;
import com.model.Offer;
import com.model.RoleId;
import com.model.User;
import com.services.shared.*;
import com.utils.request.FilterParameter;
import com.utils.request.PropertyFilterParamId;

import java.util.List;
import java.util.Map;

public class OfferServiceImpl extends BaseService implements OfferService {

    public OfferServiceImpl(ServiceSharedResources sharedResources) {
        super(ServiceId.OfferService, sharedResources);
    }

    @Override
    public List<Offer> getUserOffers(User user) {
        OfferDAO offerDAO = new OfferDAOImpl();

        return offerDAO.listUserOffers(user);
    }

    @Override
    public List<Offer> listAllOffers() {
        OfferDAO offerDAO = new OfferDAOImpl();

        return offerDAO.list();
    }

    @Override
    public Offer getOfferById(int id) {
        OfferDAO offerDAO = new OfferDAOImpl();

        return offerDAO.getOfferById(id);
    }

    @Override
    public boolean addOffer(Offer offer) {
        OfferDAO offerDAO = new OfferDAOImpl();

        return offerDAO.addOffer(offer);
    }

    @Override
    public boolean deleteOffer(Offer offer) {
        User loggedUser = ServiceManager.getInstance().getAuthService().getLoggedUser();
        boolean hasPermission = ServiceManager.getInstance().getPermissionService().canDeleteOffer(loggedUser, offer);

        if (hasPermission) {
            OfferDAO offerDAO = new OfferDAOImpl();
            return offerDAO.deleteOffer(offer);
        }

        return false;
    }

    @Override
    public boolean updateOffer(Offer offer) {
        User loggedUser = ServiceManager.getInstance().getAuthService().getLoggedUser();
        boolean hasPermission = ServiceManager.getInstance().getPermissionService().canEditOffer(loggedUser, offer);

        if (hasPermission) {
            OfferDAO offerDAO = new OfferDAOImpl();
            return offerDAO.updateOffer(offer);
        }

        return false;
    }

    @Override
    public List<Offer> filterOffers(Map<PropertyFilterParamId, FilterParameter> filterParameters) {
        OfferDAO dao = new OfferDAOImpl();

        return dao.filter(filterParameters);
    }
}
