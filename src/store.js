import { createStore, combineReducers, applyMiddleware } from 'redux';
import logger from 'redux-logger';

const contact = (state = [], action) => {
    if (action.type === 'CONTACT_ME'){
        return [...state, action.payload]
    } else if (action.type === 'RESET_CONTACT'){
        return []
    }
    return state;
}

const storeInstance = createStore(
    combineReducers({
        contact,

    }),
    applyMiddleware(logger)
);

export default storeInstance;